export const usePrediction = () => {  
    const predict = async (text: string) => {  
      const res = await fetch(import.meta.env.VITE_API_URL, {  
        method: "POST",  
        body: JSON.stringify({ text })  
      });  
      return await res.json();  
    };  
    return { predict };  
  };  